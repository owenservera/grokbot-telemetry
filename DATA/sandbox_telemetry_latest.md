# sandbox_telemetry_parse — 2026-10-14 18:59:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=435646 lines=968
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 963 |
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
| `chromeBrowserPssKb` | {'int': 963} |
| `chromeGpuPssKb` | {'int': 963} |
| `chromeOtherPssKb` | {'int': 963} |
| `chromeProcesses` | {'int': 963} |
| `chromeProfiles` | {'int': 963} |
| `chromeRendererMaxPssKb` | {'int': 963} |
| `chromeRendererPssKb` | {'int': 963} |
| `chromeRenderers` | {'int': 963} |
| `chromeTabs` | {'int': 963} |
| `chromeTabsProbedProfiles` | {'int': 963} |
| `chromeUtilityPssKb` | {'int': 963} |
| `desktopPssKb` | {'int': 963} |
| `hostPssKb` | {'int': 963} |
| `kind` | {'str': 963} |
| `memAvailableKb` | {'int': 963} |
| `memTotalKb` | {'int': 963} |
| `otherPssKb` | {'int': 963} |
| `processes` | {'int': 963} |
| `pssFallbackProcesses` | {'int': 963} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
