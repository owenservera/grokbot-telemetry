# sandbox_telemetry_parse — 2026-10-27 03:09:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=286620 lines=637
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 632 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 632} |
| `chromeGpuPssKb` | {'int': 632} |
| `chromeOtherPssKb` | {'int': 632} |
| `chromeProcesses` | {'int': 632} |
| `chromeProfiles` | {'int': 632} |
| `chromeRendererMaxPssKb` | {'int': 632} |
| `chromeRendererPssKb` | {'int': 632} |
| `chromeRenderers` | {'int': 632} |
| `chromeTabs` | {'int': 632} |
| `chromeTabsProbedProfiles` | {'int': 632} |
| `chromeUtilityPssKb` | {'int': 632} |
| `desktopPssKb` | {'int': 632} |
| `hostPssKb` | {'int': 632} |
| `kind` | {'str': 632} |
| `memAvailableKb` | {'int': 632} |
| `memTotalKb` | {'int': 632} |
| `otherPssKb` | {'int': 632} |
| `processes` | {'int': 632} |
| `pssFallbackProcesses` | {'int': 632} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
