# sandbox_telemetry_parse — 2026-10-06 16:53:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=488114 lines=1075
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1070 |
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
| `chromeBrowserPssKb` | {'int': 1070} |
| `chromeGpuPssKb` | {'int': 1070} |
| `chromeOtherPssKb` | {'int': 1070} |
| `chromeProcesses` | {'int': 1070} |
| `chromeProfiles` | {'int': 1070} |
| `chromeRendererMaxPssKb` | {'int': 1070} |
| `chromeRendererPssKb` | {'int': 1070} |
| `chromeRenderers` | {'int': 1070} |
| `chromeTabs` | {'int': 1070} |
| `chromeTabsProbedProfiles` | {'int': 1070} |
| `chromeUtilityPssKb` | {'int': 1070} |
| `desktopPssKb` | {'int': 1070} |
| `hostPssKb` | {'int': 1070} |
| `kind` | {'str': 1070} |
| `memAvailableKb` | {'int': 1070} |
| `memTotalKb` | {'int': 1070} |
| `otherPssKb` | {'int': 1070} |
| `processes` | {'int': 1070} |
| `pssFallbackProcesses` | {'int': 1070} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
