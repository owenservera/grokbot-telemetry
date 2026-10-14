# sandbox_telemetry_parse — 2026-10-14 07:16:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=160378 lines=359
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 354 |
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
| `chromeBrowserPssKb` | {'int': 354} |
| `chromeGpuPssKb` | {'int': 354} |
| `chromeOtherPssKb` | {'int': 354} |
| `chromeProcesses` | {'int': 354} |
| `chromeProfiles` | {'int': 354} |
| `chromeRendererMaxPssKb` | {'int': 354} |
| `chromeRendererPssKb` | {'int': 354} |
| `chromeRenderers` | {'int': 354} |
| `chromeTabs` | {'int': 354} |
| `chromeTabsProbedProfiles` | {'int': 354} |
| `chromeUtilityPssKb` | {'int': 354} |
| `desktopPssKb` | {'int': 354} |
| `hostPssKb` | {'int': 354} |
| `kind` | {'str': 354} |
| `memAvailableKb` | {'int': 354} |
| `memTotalKb` | {'int': 354} |
| `otherPssKb` | {'int': 354} |
| `processes` | {'int': 354} |
| `pssFallbackProcesses` | {'int': 354} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
