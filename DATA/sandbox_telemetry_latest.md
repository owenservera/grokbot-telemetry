# sandbox_telemetry_parse — 2026-10-14 06:07:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=131902 lines=296
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 291 |
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
| `chromeBrowserPssKb` | {'int': 291} |
| `chromeGpuPssKb` | {'int': 291} |
| `chromeOtherPssKb` | {'int': 291} |
| `chromeProcesses` | {'int': 291} |
| `chromeProfiles` | {'int': 291} |
| `chromeRendererMaxPssKb` | {'int': 291} |
| `chromeRendererPssKb` | {'int': 291} |
| `chromeRenderers` | {'int': 291} |
| `chromeTabs` | {'int': 291} |
| `chromeTabsProbedProfiles` | {'int': 291} |
| `chromeUtilityPssKb` | {'int': 291} |
| `desktopPssKb` | {'int': 291} |
| `hostPssKb` | {'int': 291} |
| `kind` | {'str': 291} |
| `memAvailableKb` | {'int': 291} |
| `memTotalKb` | {'int': 291} |
| `otherPssKb` | {'int': 291} |
| `processes` | {'int': 291} |
| `pssFallbackProcesses` | {'int': 291} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
