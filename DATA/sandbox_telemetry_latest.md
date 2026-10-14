# sandbox_telemetry_parse — 2026-10-14 16:50:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=387282 lines=861
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 856 |
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
| `chromeBrowserPssKb` | {'int': 856} |
| `chromeGpuPssKb` | {'int': 856} |
| `chromeOtherPssKb` | {'int': 856} |
| `chromeProcesses` | {'int': 856} |
| `chromeProfiles` | {'int': 856} |
| `chromeRendererMaxPssKb` | {'int': 856} |
| `chromeRendererPssKb` | {'int': 856} |
| `chromeRenderers` | {'int': 856} |
| `chromeTabs` | {'int': 856} |
| `chromeTabsProbedProfiles` | {'int': 856} |
| `chromeUtilityPssKb` | {'int': 856} |
| `desktopPssKb` | {'int': 856} |
| `hostPssKb` | {'int': 856} |
| `kind` | {'str': 856} |
| `memAvailableKb` | {'int': 856} |
| `memTotalKb` | {'int': 856} |
| `otherPssKb` | {'int': 856} |
| `processes` | {'int': 856} |
| `pssFallbackProcesses` | {'int': 856} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
