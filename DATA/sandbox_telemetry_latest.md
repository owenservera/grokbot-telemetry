# sandbox_telemetry_parse — 2026-10-15 18:15:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=990250 lines=2195
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2190 |
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
| `chromeBrowserPssKb` | {'int': 2190} |
| `chromeGpuPssKb` | {'int': 2190} |
| `chromeOtherPssKb` | {'int': 2190} |
| `chromeProcesses` | {'int': 2190} |
| `chromeProfiles` | {'int': 2190} |
| `chromeRendererMaxPssKb` | {'int': 2190} |
| `chromeRendererPssKb` | {'int': 2190} |
| `chromeRenderers` | {'int': 2190} |
| `chromeTabs` | {'int': 2190} |
| `chromeTabsProbedProfiles` | {'int': 2190} |
| `chromeUtilityPssKb` | {'int': 2190} |
| `desktopPssKb` | {'int': 2190} |
| `hostPssKb` | {'int': 2190} |
| `kind` | {'str': 2190} |
| `memAvailableKb` | {'int': 2190} |
| `memTotalKb` | {'int': 2190} |
| `otherPssKb` | {'int': 2190} |
| `processes` | {'int': 2190} |
| `pssFallbackProcesses` | {'int': 2190} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
