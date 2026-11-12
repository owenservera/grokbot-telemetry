# sandbox_telemetry_parse — 2026-11-12 15:05:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2186152 lines=4839
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4830 |
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
| `chromeBrowserPssKb` | {'int': 4830} |
| `chromeGpuPssKb` | {'int': 4830} |
| `chromeOtherPssKb` | {'int': 4830} |
| `chromeProcesses` | {'int': 4830} |
| `chromeProfiles` | {'int': 4830} |
| `chromeRendererMaxPssKb` | {'int': 4830} |
| `chromeRendererPssKb` | {'int': 4830} |
| `chromeRenderers` | {'int': 4830} |
| `chromeTabs` | {'int': 4830} |
| `chromeTabsProbedProfiles` | {'int': 4830} |
| `chromeUtilityPssKb` | {'int': 4830} |
| `desktopPssKb` | {'int': 4830} |
| `hostPssKb` | {'int': 4830} |
| `kind` | {'str': 4830} |
| `memAvailableKb` | {'int': 4830} |
| `memTotalKb` | {'int': 4830} |
| `otherPssKb` | {'int': 4830} |
| `processes` | {'int': 4830} |
| `pssFallbackProcesses` | {'int': 4830} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
