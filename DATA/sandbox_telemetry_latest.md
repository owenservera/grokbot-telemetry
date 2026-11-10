# sandbox_telemetry_parse — 2026-11-10 05:15:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=999602 lines=2217
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2208 |
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
| `chromeBrowserPssKb` | {'int': 2208} |
| `chromeGpuPssKb` | {'int': 2208} |
| `chromeOtherPssKb` | {'int': 2208} |
| `chromeProcesses` | {'int': 2208} |
| `chromeProfiles` | {'int': 2208} |
| `chromeRendererMaxPssKb` | {'int': 2208} |
| `chromeRendererPssKb` | {'int': 2208} |
| `chromeRenderers` | {'int': 2208} |
| `chromeTabs` | {'int': 2208} |
| `chromeTabsProbedProfiles` | {'int': 2208} |
| `chromeUtilityPssKb` | {'int': 2208} |
| `desktopPssKb` | {'int': 2208} |
| `hostPssKb` | {'int': 2208} |
| `kind` | {'str': 2208} |
| `memAvailableKb` | {'int': 2208} |
| `memTotalKb` | {'int': 2208} |
| `otherPssKb` | {'int': 2208} |
| `processes` | {'int': 2208} |
| `pssFallbackProcesses` | {'int': 2208} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
