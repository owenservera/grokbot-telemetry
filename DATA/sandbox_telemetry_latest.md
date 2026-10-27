# sandbox_telemetry_parse — 2026-10-27 11:48:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=497812 lines=1104
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1099 |
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
| `chromeBrowserPssKb` | {'int': 1099} |
| `chromeGpuPssKb` | {'int': 1099} |
| `chromeOtherPssKb` | {'int': 1099} |
| `chromeProcesses` | {'int': 1099} |
| `chromeProfiles` | {'int': 1099} |
| `chromeRendererMaxPssKb` | {'int': 1099} |
| `chromeRendererPssKb` | {'int': 1099} |
| `chromeRenderers` | {'int': 1099} |
| `chromeTabs` | {'int': 1099} |
| `chromeTabsProbedProfiles` | {'int': 1099} |
| `chromeUtilityPssKb` | {'int': 1099} |
| `desktopPssKb` | {'int': 1099} |
| `hostPssKb` | {'int': 1099} |
| `kind` | {'str': 1099} |
| `memAvailableKb` | {'int': 1099} |
| `memTotalKb` | {'int': 1099} |
| `otherPssKb` | {'int': 1099} |
| `processes` | {'int': 1099} |
| `pssFallbackProcesses` | {'int': 1099} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
