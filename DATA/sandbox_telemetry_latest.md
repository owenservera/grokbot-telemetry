# sandbox_telemetry_parse — 2026-11-12 04:36:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1970758 lines=4363
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4354 |
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
| `chromeBrowserPssKb` | {'int': 4354} |
| `chromeGpuPssKb` | {'int': 4354} |
| `chromeOtherPssKb` | {'int': 4354} |
| `chromeProcesses` | {'int': 4354} |
| `chromeProfiles` | {'int': 4354} |
| `chromeRendererMaxPssKb` | {'int': 4354} |
| `chromeRendererPssKb` | {'int': 4354} |
| `chromeRenderers` | {'int': 4354} |
| `chromeTabs` | {'int': 4354} |
| `chromeTabsProbedProfiles` | {'int': 4354} |
| `chromeUtilityPssKb` | {'int': 4354} |
| `desktopPssKb` | {'int': 4354} |
| `hostPssKb` | {'int': 4354} |
| `kind` | {'str': 4354} |
| `memAvailableKb` | {'int': 4354} |
| `memTotalKb` | {'int': 4354} |
| `otherPssKb` | {'int': 4354} |
| `processes` | {'int': 4354} |
| `pssFallbackProcesses` | {'int': 4354} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
