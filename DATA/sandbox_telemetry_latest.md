# sandbox_telemetry_parse — 2026-10-14 08:09:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=180266 lines=403
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 398 |
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
| `chromeBrowserPssKb` | {'int': 398} |
| `chromeGpuPssKb` | {'int': 398} |
| `chromeOtherPssKb` | {'int': 398} |
| `chromeProcesses` | {'int': 398} |
| `chromeProfiles` | {'int': 398} |
| `chromeRendererMaxPssKb` | {'int': 398} |
| `chromeRendererPssKb` | {'int': 398} |
| `chromeRenderers` | {'int': 398} |
| `chromeTabs` | {'int': 398} |
| `chromeTabsProbedProfiles` | {'int': 398} |
| `chromeUtilityPssKb` | {'int': 398} |
| `desktopPssKb` | {'int': 398} |
| `hostPssKb` | {'int': 398} |
| `kind` | {'str': 398} |
| `memAvailableKb` | {'int': 398} |
| `memTotalKb` | {'int': 398} |
| `otherPssKb` | {'int': 398} |
| `processes` | {'int': 398} |
| `pssFallbackProcesses` | {'int': 398} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
