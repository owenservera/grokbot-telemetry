# sandbox_telemetry_parse — 2026-11-24 00:16:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2052278 lines=4550
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4535 |
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
| `chromeBrowserPssKb` | {'int': 4535} |
| `chromeGpuPssKb` | {'int': 4535} |
| `chromeOtherPssKb` | {'int': 4535} |
| `chromeProcesses` | {'int': 4535} |
| `chromeProfiles` | {'int': 4535} |
| `chromeRendererMaxPssKb` | {'int': 4535} |
| `chromeRendererPssKb` | {'int': 4535} |
| `chromeRenderers` | {'int': 4535} |
| `chromeTabs` | {'int': 4535} |
| `chromeTabsProbedProfiles` | {'int': 4535} |
| `chromeUtilityPssKb` | {'int': 4535} |
| `desktopPssKb` | {'int': 4535} |
| `hostPssKb` | {'int': 4535} |
| `kind` | {'str': 4535} |
| `memAvailableKb` | {'int': 4535} |
| `memTotalKb` | {'int': 4535} |
| `otherPssKb` | {'int': 4535} |
| `processes` | {'int': 4535} |
| `pssFallbackProcesses` | {'int': 4535} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
