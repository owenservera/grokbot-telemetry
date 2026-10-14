# sandbox_telemetry_parse — 2026-10-14 05:23:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=112466 lines=253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 248 |
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
| `chromeBrowserPssKb` | {'int': 248} |
| `chromeGpuPssKb` | {'int': 248} |
| `chromeOtherPssKb` | {'int': 248} |
| `chromeProcesses` | {'int': 248} |
| `chromeProfiles` | {'int': 248} |
| `chromeRendererMaxPssKb` | {'int': 248} |
| `chromeRendererPssKb` | {'int': 248} |
| `chromeRenderers` | {'int': 248} |
| `chromeTabs` | {'int': 248} |
| `chromeTabsProbedProfiles` | {'int': 248} |
| `chromeUtilityPssKb` | {'int': 248} |
| `desktopPssKb` | {'int': 248} |
| `hostPssKb` | {'int': 248} |
| `kind` | {'str': 248} |
| `memAvailableKb` | {'int': 248} |
| `memTotalKb` | {'int': 248} |
| `otherPssKb` | {'int': 248} |
| `processes` | {'int': 248} |
| `pssFallbackProcesses` | {'int': 248} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
