# sandbox_telemetry_parse — 2026-10-26 20:51:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=132657 lines=297
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 292 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 292} |
| `chromeGpuPssKb` | {'int': 292} |
| `chromeOtherPssKb` | {'int': 292} |
| `chromeProcesses` | {'int': 292} |
| `chromeProfiles` | {'int': 292} |
| `chromeRendererMaxPssKb` | {'int': 292} |
| `chromeRendererPssKb` | {'int': 292} |
| `chromeRenderers` | {'int': 292} |
| `chromeTabs` | {'int': 292} |
| `chromeTabsProbedProfiles` | {'int': 292} |
| `chromeUtilityPssKb` | {'int': 292} |
| `desktopPssKb` | {'int': 292} |
| `hostPssKb` | {'int': 292} |
| `kind` | {'str': 292} |
| `memAvailableKb` | {'int': 292} |
| `memTotalKb` | {'int': 292} |
| `otherPssKb` | {'int': 292} |
| `processes` | {'int': 292} |
| `pssFallbackProcesses` | {'int': 292} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
