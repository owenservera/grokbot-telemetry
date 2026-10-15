# sandbox_telemetry_parse — 2026-10-15 22:31:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1086526 lines=2408
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2403 |
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
| `chromeBrowserPssKb` | {'int': 2403} |
| `chromeGpuPssKb` | {'int': 2403} |
| `chromeOtherPssKb` | {'int': 2403} |
| `chromeProcesses` | {'int': 2403} |
| `chromeProfiles` | {'int': 2403} |
| `chromeRendererMaxPssKb` | {'int': 2403} |
| `chromeRendererPssKb` | {'int': 2403} |
| `chromeRenderers` | {'int': 2403} |
| `chromeTabs` | {'int': 2403} |
| `chromeTabsProbedProfiles` | {'int': 2403} |
| `chromeUtilityPssKb` | {'int': 2403} |
| `desktopPssKb` | {'int': 2403} |
| `hostPssKb` | {'int': 2403} |
| `kind` | {'str': 2403} |
| `memAvailableKb` | {'int': 2403} |
| `memTotalKb` | {'int': 2403} |
| `otherPssKb` | {'int': 2403} |
| `processes` | {'int': 2403} |
| `pssFallbackProcesses` | {'int': 2403} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
