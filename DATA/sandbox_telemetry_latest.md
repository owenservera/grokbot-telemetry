# sandbox_telemetry_parse — 2026-11-10 18:40:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1269838 lines=2814
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2805 |
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
| `chromeBrowserPssKb` | {'int': 2805} |
| `chromeGpuPssKb` | {'int': 2805} |
| `chromeOtherPssKb` | {'int': 2805} |
| `chromeProcesses` | {'int': 2805} |
| `chromeProfiles` | {'int': 2805} |
| `chromeRendererMaxPssKb` | {'int': 2805} |
| `chromeRendererPssKb` | {'int': 2805} |
| `chromeRenderers` | {'int': 2805} |
| `chromeTabs` | {'int': 2805} |
| `chromeTabsProbedProfiles` | {'int': 2805} |
| `chromeUtilityPssKb` | {'int': 2805} |
| `desktopPssKb` | {'int': 2805} |
| `hostPssKb` | {'int': 2805} |
| `kind` | {'str': 2805} |
| `memAvailableKb` | {'int': 2805} |
| `memTotalKb` | {'int': 2805} |
| `otherPssKb` | {'int': 2805} |
| `processes` | {'int': 2805} |
| `pssFallbackProcesses` | {'int': 2805} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
