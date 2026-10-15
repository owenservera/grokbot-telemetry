# sandbox_telemetry_parse — 2026-10-15 17:47:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=979402 lines=2171
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2166 |
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
| `chromeBrowserPssKb` | {'int': 2166} |
| `chromeGpuPssKb` | {'int': 2166} |
| `chromeOtherPssKb` | {'int': 2166} |
| `chromeProcesses` | {'int': 2166} |
| `chromeProfiles` | {'int': 2166} |
| `chromeRendererMaxPssKb` | {'int': 2166} |
| `chromeRendererPssKb` | {'int': 2166} |
| `chromeRenderers` | {'int': 2166} |
| `chromeTabs` | {'int': 2166} |
| `chromeTabsProbedProfiles` | {'int': 2166} |
| `chromeUtilityPssKb` | {'int': 2166} |
| `desktopPssKb` | {'int': 2166} |
| `hostPssKb` | {'int': 2166} |
| `kind` | {'str': 2166} |
| `memAvailableKb` | {'int': 2166} |
| `memTotalKb` | {'int': 2166} |
| `otherPssKb` | {'int': 2166} |
| `processes` | {'int': 2166} |
| `pssFallbackProcesses` | {'int': 2166} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
