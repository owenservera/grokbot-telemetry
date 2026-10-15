# sandbox_telemetry_parse — 2026-10-15 19:58:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1028218 lines=2279
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2274 |
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
| `chromeBrowserPssKb` | {'int': 2274} |
| `chromeGpuPssKb` | {'int': 2274} |
| `chromeOtherPssKb` | {'int': 2274} |
| `chromeProcesses` | {'int': 2274} |
| `chromeProfiles` | {'int': 2274} |
| `chromeRendererMaxPssKb` | {'int': 2274} |
| `chromeRendererPssKb` | {'int': 2274} |
| `chromeRenderers` | {'int': 2274} |
| `chromeTabs` | {'int': 2274} |
| `chromeTabsProbedProfiles` | {'int': 2274} |
| `chromeUtilityPssKb` | {'int': 2274} |
| `desktopPssKb` | {'int': 2274} |
| `hostPssKb` | {'int': 2274} |
| `kind` | {'str': 2274} |
| `memAvailableKb` | {'int': 2274} |
| `memTotalKb` | {'int': 2274} |
| `otherPssKb` | {'int': 2274} |
| `processes` | {'int': 2274} |
| `pssFallbackProcesses` | {'int': 2274} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
