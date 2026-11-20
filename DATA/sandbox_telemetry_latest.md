# sandbox_telemetry_parse — 2026-11-20 07:58:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1631179 lines=3616
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3605 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3605} |
| `chromeGpuPssKb` | {'int': 3605} |
| `chromeOtherPssKb` | {'int': 3605} |
| `chromeProcesses` | {'int': 3605} |
| `chromeProfiles` | {'int': 3605} |
| `chromeRendererMaxPssKb` | {'int': 3605} |
| `chromeRendererPssKb` | {'int': 3605} |
| `chromeRenderers` | {'int': 3605} |
| `chromeTabs` | {'int': 3605} |
| `chromeTabsProbedProfiles` | {'int': 3605} |
| `chromeUtilityPssKb` | {'int': 3605} |
| `desktopPssKb` | {'int': 3605} |
| `hostPssKb` | {'int': 3605} |
| `kind` | {'str': 3605} |
| `memAvailableKb` | {'int': 3605} |
| `memTotalKb` | {'int': 3605} |
| `otherPssKb` | {'int': 3605} |
| `processes` | {'int': 3605} |
| `pssFallbackProcesses` | {'int': 3605} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
