# sandbox_telemetry_parse — 2026-10-27 01:36:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=250437 lines=557
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 552 |
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
| `chromeBrowserPssKb` | {'int': 552} |
| `chromeGpuPssKb` | {'int': 552} |
| `chromeOtherPssKb` | {'int': 552} |
| `chromeProcesses` | {'int': 552} |
| `chromeProfiles` | {'int': 552} |
| `chromeRendererMaxPssKb` | {'int': 552} |
| `chromeRendererPssKb` | {'int': 552} |
| `chromeRenderers` | {'int': 552} |
| `chromeTabs` | {'int': 552} |
| `chromeTabsProbedProfiles` | {'int': 552} |
| `chromeUtilityPssKb` | {'int': 552} |
| `desktopPssKb` | {'int': 552} |
| `hostPssKb` | {'int': 552} |
| `kind` | {'str': 552} |
| `memAvailableKb` | {'int': 552} |
| `memTotalKb` | {'int': 552} |
| `otherPssKb` | {'int': 552} |
| `processes` | {'int': 552} |
| `pssFallbackProcesses` | {'int': 552} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
