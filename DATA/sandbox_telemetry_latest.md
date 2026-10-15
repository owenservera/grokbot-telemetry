# sandbox_telemetry_parse — 2026-10-15 23:33:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1109578 lines=2459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2454 |
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
| `chromeBrowserPssKb` | {'int': 2454} |
| `chromeGpuPssKb` | {'int': 2454} |
| `chromeOtherPssKb` | {'int': 2454} |
| `chromeProcesses` | {'int': 2454} |
| `chromeProfiles` | {'int': 2454} |
| `chromeRendererMaxPssKb` | {'int': 2454} |
| `chromeRendererPssKb` | {'int': 2454} |
| `chromeRenderers` | {'int': 2454} |
| `chromeTabs` | {'int': 2454} |
| `chromeTabsProbedProfiles` | {'int': 2454} |
| `chromeUtilityPssKb` | {'int': 2454} |
| `desktopPssKb` | {'int': 2454} |
| `hostPssKb` | {'int': 2454} |
| `kind` | {'str': 2454} |
| `memAvailableKb` | {'int': 2454} |
| `memTotalKb` | {'int': 2454} |
| `otherPssKb` | {'int': 2454} |
| `processes` | {'int': 2454} |
| `pssFallbackProcesses` | {'int': 2454} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
