# sandbox_telemetry_parse — 2026-11-09 16:51:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=748938 lines=1663
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1654 |
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
| `chromeBrowserPssKb` | {'int': 1654} |
| `chromeGpuPssKb` | {'int': 1654} |
| `chromeOtherPssKb` | {'int': 1654} |
| `chromeProcesses` | {'int': 1654} |
| `chromeProfiles` | {'int': 1654} |
| `chromeRendererMaxPssKb` | {'int': 1654} |
| `chromeRendererPssKb` | {'int': 1654} |
| `chromeRenderers` | {'int': 1654} |
| `chromeTabs` | {'int': 1654} |
| `chromeTabsProbedProfiles` | {'int': 1654} |
| `chromeUtilityPssKb` | {'int': 1654} |
| `desktopPssKb` | {'int': 1654} |
| `hostPssKb` | {'int': 1654} |
| `kind` | {'str': 1654} |
| `memAvailableKb` | {'int': 1654} |
| `memTotalKb` | {'int': 1654} |
| `otherPssKb` | {'int': 1654} |
| `processes` | {'int': 1654} |
| `pssFallbackProcesses` | {'int': 1654} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
