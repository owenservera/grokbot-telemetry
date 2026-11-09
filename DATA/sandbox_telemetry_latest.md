# sandbox_telemetry_parse — 2026-11-09 20:31:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=828624 lines=1839
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1830 |
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
| `chromeBrowserPssKb` | {'int': 1830} |
| `chromeGpuPssKb` | {'int': 1830} |
| `chromeOtherPssKb` | {'int': 1830} |
| `chromeProcesses` | {'int': 1830} |
| `chromeProfiles` | {'int': 1830} |
| `chromeRendererMaxPssKb` | {'int': 1830} |
| `chromeRendererPssKb` | {'int': 1830} |
| `chromeRenderers` | {'int': 1830} |
| `chromeTabs` | {'int': 1830} |
| `chromeTabsProbedProfiles` | {'int': 1830} |
| `chromeUtilityPssKb` | {'int': 1830} |
| `desktopPssKb` | {'int': 1830} |
| `hostPssKb` | {'int': 1830} |
| `kind` | {'str': 1830} |
| `memAvailableKb` | {'int': 1830} |
| `memTotalKb` | {'int': 1830} |
| `otherPssKb` | {'int': 1830} |
| `processes` | {'int': 1830} |
| `pssFallbackProcesses` | {'int': 1830} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
