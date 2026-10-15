# sandbox_telemetry_parse — 2026-10-15 04:05:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=655770 lines=1455
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1450 |
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
| `chromeBrowserPssKb` | {'int': 1450} |
| `chromeGpuPssKb` | {'int': 1450} |
| `chromeOtherPssKb` | {'int': 1450} |
| `chromeProcesses` | {'int': 1450} |
| `chromeProfiles` | {'int': 1450} |
| `chromeRendererMaxPssKb` | {'int': 1450} |
| `chromeRendererPssKb` | {'int': 1450} |
| `chromeRenderers` | {'int': 1450} |
| `chromeTabs` | {'int': 1450} |
| `chromeTabsProbedProfiles` | {'int': 1450} |
| `chromeUtilityPssKb` | {'int': 1450} |
| `desktopPssKb` | {'int': 1450} |
| `hostPssKb` | {'int': 1450} |
| `kind` | {'str': 1450} |
| `memAvailableKb` | {'int': 1450} |
| `memTotalKb` | {'int': 1450} |
| `otherPssKb` | {'int': 1450} |
| `processes` | {'int': 1450} |
| `pssFallbackProcesses` | {'int': 1450} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
