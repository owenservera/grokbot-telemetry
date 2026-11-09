# sandbox_telemetry_parse — 2026-11-09 22:52:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=872943 lines=1937
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1928 |
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
| `chromeBrowserPssKb` | {'int': 1928} |
| `chromeGpuPssKb` | {'int': 1928} |
| `chromeOtherPssKb` | {'int': 1928} |
| `chromeProcesses` | {'int': 1928} |
| `chromeProfiles` | {'int': 1928} |
| `chromeRendererMaxPssKb` | {'int': 1928} |
| `chromeRendererPssKb` | {'int': 1928} |
| `chromeRenderers` | {'int': 1928} |
| `chromeTabs` | {'int': 1928} |
| `chromeTabsProbedProfiles` | {'int': 1928} |
| `chromeUtilityPssKb` | {'int': 1928} |
| `desktopPssKb` | {'int': 1928} |
| `hostPssKb` | {'int': 1928} |
| `kind` | {'str': 1928} |
| `memAvailableKb` | {'int': 1928} |
| `memTotalKb` | {'int': 1928} |
| `otherPssKb` | {'int': 1928} |
| `processes` | {'int': 1928} |
| `pssFallbackProcesses` | {'int': 1928} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
