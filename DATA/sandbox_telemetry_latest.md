# sandbox_telemetry_parse — 2026-11-12 17:52:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2254102 lines=4989
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4980 |
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
| `chromeBrowserPssKb` | {'int': 4980} |
| `chromeGpuPssKb` | {'int': 4980} |
| `chromeOtherPssKb` | {'int': 4980} |
| `chromeProcesses` | {'int': 4980} |
| `chromeProfiles` | {'int': 4980} |
| `chromeRendererMaxPssKb` | {'int': 4980} |
| `chromeRendererPssKb` | {'int': 4980} |
| `chromeRenderers` | {'int': 4980} |
| `chromeTabs` | {'int': 4980} |
| `chromeTabsProbedProfiles` | {'int': 4980} |
| `chromeUtilityPssKb` | {'int': 4980} |
| `desktopPssKb` | {'int': 4980} |
| `hostPssKb` | {'int': 4980} |
| `kind` | {'str': 4980} |
| `memAvailableKb` | {'int': 4980} |
| `memTotalKb` | {'int': 4980} |
| `otherPssKb` | {'int': 4980} |
| `processes` | {'int': 4980} |
| `pssFallbackProcesses` | {'int': 4980} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
