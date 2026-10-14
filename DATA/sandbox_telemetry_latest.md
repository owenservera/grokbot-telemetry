# sandbox_telemetry_parse — 2026-10-14 05:48:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=122862 lines=276
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 271 |
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
| `chromeBrowserPssKb` | {'int': 271} |
| `chromeGpuPssKb` | {'int': 271} |
| `chromeOtherPssKb` | {'int': 271} |
| `chromeProcesses` | {'int': 271} |
| `chromeProfiles` | {'int': 271} |
| `chromeRendererMaxPssKb` | {'int': 271} |
| `chromeRendererPssKb` | {'int': 271} |
| `chromeRenderers` | {'int': 271} |
| `chromeTabs` | {'int': 271} |
| `chromeTabsProbedProfiles` | {'int': 271} |
| `chromeUtilityPssKb` | {'int': 271} |
| `desktopPssKb` | {'int': 271} |
| `hostPssKb` | {'int': 271} |
| `kind` | {'str': 271} |
| `memAvailableKb` | {'int': 271} |
| `memTotalKb` | {'int': 271} |
| `otherPssKb` | {'int': 271} |
| `processes` | {'int': 271} |
| `pssFallbackProcesses` | {'int': 271} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
