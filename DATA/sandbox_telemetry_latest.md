# sandbox_telemetry_parse — 2026-11-23 16:11:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1903835 lines=4222
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4207 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4207} |
| `chromeGpuPssKb` | {'int': 4207} |
| `chromeOtherPssKb` | {'int': 4207} |
| `chromeProcesses` | {'int': 4207} |
| `chromeProfiles` | {'int': 4207} |
| `chromeRendererMaxPssKb` | {'int': 4207} |
| `chromeRendererPssKb` | {'int': 4207} |
| `chromeRenderers` | {'int': 4207} |
| `chromeTabs` | {'int': 4207} |
| `chromeTabsProbedProfiles` | {'int': 4207} |
| `chromeUtilityPssKb` | {'int': 4207} |
| `desktopPssKb` | {'int': 4207} |
| `hostPssKb` | {'int': 4207} |
| `kind` | {'str': 4207} |
| `memAvailableKb` | {'int': 4207} |
| `memTotalKb` | {'int': 4207} |
| `otherPssKb` | {'int': 4207} |
| `processes` | {'int': 4207} |
| `pssFallbackProcesses` | {'int': 4207} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
