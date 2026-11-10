# sandbox_telemetry_parse — 2026-11-10 22:22:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1352664 lines=2997
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2988 |
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
| `chromeBrowserPssKb` | {'int': 2988} |
| `chromeGpuPssKb` | {'int': 2988} |
| `chromeOtherPssKb` | {'int': 2988} |
| `chromeProcesses` | {'int': 2988} |
| `chromeProfiles` | {'int': 2988} |
| `chromeRendererMaxPssKb` | {'int': 2988} |
| `chromeRendererPssKb` | {'int': 2988} |
| `chromeRenderers` | {'int': 2988} |
| `chromeTabs` | {'int': 2988} |
| `chromeTabsProbedProfiles` | {'int': 2988} |
| `chromeUtilityPssKb` | {'int': 2988} |
| `desktopPssKb` | {'int': 2988} |
| `hostPssKb` | {'int': 2988} |
| `kind` | {'str': 2988} |
| `memAvailableKb` | {'int': 2988} |
| `memTotalKb` | {'int': 2988} |
| `otherPssKb` | {'int': 2988} |
| `processes` | {'int': 2988} |
| `pssFallbackProcesses` | {'int': 2988} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
