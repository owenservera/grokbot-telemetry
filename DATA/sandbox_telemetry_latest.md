# sandbox_telemetry_parse — 2026-11-10 19:58:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1293818 lines=2867
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2858 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2858} |
| `chromeGpuPssKb` | {'int': 2858} |
| `chromeOtherPssKb` | {'int': 2858} |
| `chromeProcesses` | {'int': 2858} |
| `chromeProfiles` | {'int': 2858} |
| `chromeRendererMaxPssKb` | {'int': 2858} |
| `chromeRendererPssKb` | {'int': 2858} |
| `chromeRenderers` | {'int': 2858} |
| `chromeTabs` | {'int': 2858} |
| `chromeTabsProbedProfiles` | {'int': 2858} |
| `chromeUtilityPssKb` | {'int': 2858} |
| `desktopPssKb` | {'int': 2858} |
| `hostPssKb` | {'int': 2858} |
| `kind` | {'str': 2858} |
| `memAvailableKb` | {'int': 2858} |
| `memTotalKb` | {'int': 2858} |
| `otherPssKb` | {'int': 2858} |
| `processes` | {'int': 2858} |
| `pssFallbackProcesses` | {'int': 2858} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
