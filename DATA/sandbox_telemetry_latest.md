# sandbox_telemetry_parse — 2026-10-14 07:47:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=171678 lines=384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 379 |
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
| `chromeBrowserPssKb` | {'int': 379} |
| `chromeGpuPssKb` | {'int': 379} |
| `chromeOtherPssKb` | {'int': 379} |
| `chromeProcesses` | {'int': 379} |
| `chromeProfiles` | {'int': 379} |
| `chromeRendererMaxPssKb` | {'int': 379} |
| `chromeRendererPssKb` | {'int': 379} |
| `chromeRenderers` | {'int': 379} |
| `chromeTabs` | {'int': 379} |
| `chromeTabsProbedProfiles` | {'int': 379} |
| `chromeUtilityPssKb` | {'int': 379} |
| `desktopPssKb` | {'int': 379} |
| `hostPssKb` | {'int': 379} |
| `kind` | {'str': 379} |
| `memAvailableKb` | {'int': 379} |
| `memTotalKb` | {'int': 379} |
| `otherPssKb` | {'int': 379} |
| `processes` | {'int': 379} |
| `pssFallbackProcesses` | {'int': 379} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
