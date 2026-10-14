# sandbox_telemetry_parse — 2026-10-15 00:29:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=567630 lines=1260
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1255 |
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
| `chromeBrowserPssKb` | {'int': 1255} |
| `chromeGpuPssKb` | {'int': 1255} |
| `chromeOtherPssKb` | {'int': 1255} |
| `chromeProcesses` | {'int': 1255} |
| `chromeProfiles` | {'int': 1255} |
| `chromeRendererMaxPssKb` | {'int': 1255} |
| `chromeRendererPssKb` | {'int': 1255} |
| `chromeRenderers` | {'int': 1255} |
| `chromeTabs` | {'int': 1255} |
| `chromeTabsProbedProfiles` | {'int': 1255} |
| `chromeUtilityPssKb` | {'int': 1255} |
| `desktopPssKb` | {'int': 1255} |
| `hostPssKb` | {'int': 1255} |
| `kind` | {'str': 1255} |
| `memAvailableKb` | {'int': 1255} |
| `memTotalKb` | {'int': 1255} |
| `otherPssKb` | {'int': 1255} |
| `processes` | {'int': 1255} |
| `pssFallbackProcesses` | {'int': 1255} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
