# sandbox_telemetry_parse — 2026-10-15 21:19:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1060310 lines=2350
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2345 |
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
| `chromeBrowserPssKb` | {'int': 2345} |
| `chromeGpuPssKb` | {'int': 2345} |
| `chromeOtherPssKb` | {'int': 2345} |
| `chromeProcesses` | {'int': 2345} |
| `chromeProfiles` | {'int': 2345} |
| `chromeRendererMaxPssKb` | {'int': 2345} |
| `chromeRendererPssKb` | {'int': 2345} |
| `chromeRenderers` | {'int': 2345} |
| `chromeTabs` | {'int': 2345} |
| `chromeTabsProbedProfiles` | {'int': 2345} |
| `chromeUtilityPssKb` | {'int': 2345} |
| `desktopPssKb` | {'int': 2345} |
| `hostPssKb` | {'int': 2345} |
| `kind` | {'str': 2345} |
| `memAvailableKb` | {'int': 2345} |
| `memTotalKb` | {'int': 2345} |
| `otherPssKb` | {'int': 2345} |
| `processes` | {'int': 2345} |
| `pssFallbackProcesses` | {'int': 2345} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
