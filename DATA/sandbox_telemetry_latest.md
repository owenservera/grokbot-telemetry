# sandbox_telemetry_parse — 2026-10-15 20:17:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1036806 lines=2298
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2293 |
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
| `chromeBrowserPssKb` | {'int': 2293} |
| `chromeGpuPssKb` | {'int': 2293} |
| `chromeOtherPssKb` | {'int': 2293} |
| `chromeProcesses` | {'int': 2293} |
| `chromeProfiles` | {'int': 2293} |
| `chromeRendererMaxPssKb` | {'int': 2293} |
| `chromeRendererPssKb` | {'int': 2293} |
| `chromeRenderers` | {'int': 2293} |
| `chromeTabs` | {'int': 2293} |
| `chromeTabsProbedProfiles` | {'int': 2293} |
| `chromeUtilityPssKb` | {'int': 2293} |
| `desktopPssKb` | {'int': 2293} |
| `hostPssKb` | {'int': 2293} |
| `kind` | {'str': 2293} |
| `memAvailableKb` | {'int': 2293} |
| `memTotalKb` | {'int': 2293} |
| `otherPssKb` | {'int': 2293} |
| `processes` | {'int': 2293} |
| `pssFallbackProcesses` | {'int': 2293} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
