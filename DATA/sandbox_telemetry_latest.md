# sandbox_telemetry_parse — 2026-10-14 09:37:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=215974 lines=482
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 477 |
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
| `chromeBrowserPssKb` | {'int': 477} |
| `chromeGpuPssKb` | {'int': 477} |
| `chromeOtherPssKb` | {'int': 477} |
| `chromeProcesses` | {'int': 477} |
| `chromeProfiles` | {'int': 477} |
| `chromeRendererMaxPssKb` | {'int': 477} |
| `chromeRendererPssKb` | {'int': 477} |
| `chromeRenderers` | {'int': 477} |
| `chromeTabs` | {'int': 477} |
| `chromeTabsProbedProfiles` | {'int': 477} |
| `chromeUtilityPssKb` | {'int': 477} |
| `desktopPssKb` | {'int': 477} |
| `hostPssKb` | {'int': 477} |
| `kind` | {'str': 477} |
| `memAvailableKb` | {'int': 477} |
| `memTotalKb` | {'int': 477} |
| `otherPssKb` | {'int': 477} |
| `processes` | {'int': 477} |
| `pssFallbackProcesses` | {'int': 477} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
