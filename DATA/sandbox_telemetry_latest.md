# sandbox_telemetry_parse — 2026-10-14 01:14:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=14834 lines=37
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 32 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 32} |
| `chromeGpuPssKb` | {'int': 32} |
| `chromeOtherPssKb` | {'int': 32} |
| `chromeProcesses` | {'int': 32} |
| `chromeProfiles` | {'int': 32} |
| `chromeRendererMaxPssKb` | {'int': 32} |
| `chromeRendererPssKb` | {'int': 32} |
| `chromeRenderers` | {'int': 32} |
| `chromeTabs` | {'int': 32} |
| `chromeTabsProbedProfiles` | {'int': 32} |
| `chromeUtilityPssKb` | {'int': 32} |
| `desktopPssKb` | {'int': 32} |
| `hostPssKb` | {'int': 32} |
| `kind` | {'str': 32} |
| `memAvailableKb` | {'int': 32} |
| `memTotalKb` | {'int': 32} |
| `otherPssKb` | {'int': 32} |
| `processes` | {'int': 32} |
| `pssFallbackProcesses` | {'int': 32} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
