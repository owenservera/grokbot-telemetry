# sandbox_telemetry_parse — 2026-10-15 19:06:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1007426 lines=2233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2228 |
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
| `chromeBrowserPssKb` | {'int': 2228} |
| `chromeGpuPssKb` | {'int': 2228} |
| `chromeOtherPssKb` | {'int': 2228} |
| `chromeProcesses` | {'int': 2228} |
| `chromeProfiles` | {'int': 2228} |
| `chromeRendererMaxPssKb` | {'int': 2228} |
| `chromeRendererPssKb` | {'int': 2228} |
| `chromeRenderers` | {'int': 2228} |
| `chromeTabs` | {'int': 2228} |
| `chromeTabsProbedProfiles` | {'int': 2228} |
| `chromeUtilityPssKb` | {'int': 2228} |
| `desktopPssKb` | {'int': 2228} |
| `hostPssKb` | {'int': 2228} |
| `kind` | {'str': 2228} |
| `memAvailableKb` | {'int': 2228} |
| `memTotalKb` | {'int': 2228} |
| `otherPssKb` | {'int': 2228} |
| `processes` | {'int': 2228} |
| `pssFallbackProcesses` | {'int': 2228} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
