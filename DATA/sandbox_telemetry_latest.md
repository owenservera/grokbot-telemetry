# sandbox_telemetry_parse — 2026-10-14 23:54:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=553166 lines=1228
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1223 |
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
| `chromeBrowserPssKb` | {'int': 1223} |
| `chromeGpuPssKb` | {'int': 1223} |
| `chromeOtherPssKb` | {'int': 1223} |
| `chromeProcesses` | {'int': 1223} |
| `chromeProfiles` | {'int': 1223} |
| `chromeRendererMaxPssKb` | {'int': 1223} |
| `chromeRendererPssKb` | {'int': 1223} |
| `chromeRenderers` | {'int': 1223} |
| `chromeTabs` | {'int': 1223} |
| `chromeTabsProbedProfiles` | {'int': 1223} |
| `chromeUtilityPssKb` | {'int': 1223} |
| `desktopPssKb` | {'int': 1223} |
| `hostPssKb` | {'int': 1223} |
| `kind` | {'str': 1223} |
| `memAvailableKb` | {'int': 1223} |
| `memTotalKb` | {'int': 1223} |
| `otherPssKb` | {'int': 1223} |
| `processes` | {'int': 1223} |
| `pssFallbackProcesses` | {'int': 1223} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
