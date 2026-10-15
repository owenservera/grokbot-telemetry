# sandbox_telemetry_parse — 2026-10-15 20:19:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1037710 lines=2300
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2295 |
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
| `chromeBrowserPssKb` | {'int': 2295} |
| `chromeGpuPssKb` | {'int': 2295} |
| `chromeOtherPssKb` | {'int': 2295} |
| `chromeProcesses` | {'int': 2295} |
| `chromeProfiles` | {'int': 2295} |
| `chromeRendererMaxPssKb` | {'int': 2295} |
| `chromeRendererPssKb` | {'int': 2295} |
| `chromeRenderers` | {'int': 2295} |
| `chromeTabs` | {'int': 2295} |
| `chromeTabsProbedProfiles` | {'int': 2295} |
| `chromeUtilityPssKb` | {'int': 2295} |
| `desktopPssKb` | {'int': 2295} |
| `hostPssKb` | {'int': 2295} |
| `kind` | {'str': 2295} |
| `memAvailableKb` | {'int': 2295} |
| `memTotalKb` | {'int': 2295} |
| `otherPssKb` | {'int': 2295} |
| `processes` | {'int': 2295} |
| `pssFallbackProcesses` | {'int': 2295} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
