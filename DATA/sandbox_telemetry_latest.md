# sandbox_telemetry_parse — 2026-10-15 21:42:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1069802 lines=2371
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2366 |
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
| `chromeBrowserPssKb` | {'int': 2366} |
| `chromeGpuPssKb` | {'int': 2366} |
| `chromeOtherPssKb` | {'int': 2366} |
| `chromeProcesses` | {'int': 2366} |
| `chromeProfiles` | {'int': 2366} |
| `chromeRendererMaxPssKb` | {'int': 2366} |
| `chromeRendererPssKb` | {'int': 2366} |
| `chromeRenderers` | {'int': 2366} |
| `chromeTabs` | {'int': 2366} |
| `chromeTabsProbedProfiles` | {'int': 2366} |
| `chromeUtilityPssKb` | {'int': 2366} |
| `desktopPssKb` | {'int': 2366} |
| `hostPssKb` | {'int': 2366} |
| `kind` | {'str': 2366} |
| `memAvailableKb` | {'int': 2366} |
| `memTotalKb` | {'int': 2366} |
| `otherPssKb` | {'int': 2366} |
| `processes` | {'int': 2366} |
| `pssFallbackProcesses` | {'int': 2366} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
