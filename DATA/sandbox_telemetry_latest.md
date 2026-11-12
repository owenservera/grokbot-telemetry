# sandbox_telemetry_parse — 2026-11-12 14:44:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2178904 lines=4823
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4814 |
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
| `chromeBrowserPssKb` | {'int': 4814} |
| `chromeGpuPssKb` | {'int': 4814} |
| `chromeOtherPssKb` | {'int': 4814} |
| `chromeProcesses` | {'int': 4814} |
| `chromeProfiles` | {'int': 4814} |
| `chromeRendererMaxPssKb` | {'int': 4814} |
| `chromeRendererPssKb` | {'int': 4814} |
| `chromeRenderers` | {'int': 4814} |
| `chromeTabs` | {'int': 4814} |
| `chromeTabsProbedProfiles` | {'int': 4814} |
| `chromeUtilityPssKb` | {'int': 4814} |
| `desktopPssKb` | {'int': 4814} |
| `hostPssKb` | {'int': 4814} |
| `kind` | {'str': 4814} |
| `memAvailableKb` | {'int': 4814} |
| `memTotalKb` | {'int': 4814} |
| `otherPssKb` | {'int': 4814} |
| `processes` | {'int': 4814} |
| `pssFallbackProcesses` | {'int': 4814} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
