# sandbox_telemetry_parse — 2026-10-14 01:24:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=19354 lines=47
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 42 |
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
| `chromeBrowserPssKb` | {'int': 42} |
| `chromeGpuPssKb` | {'int': 42} |
| `chromeOtherPssKb` | {'int': 42} |
| `chromeProcesses` | {'int': 42} |
| `chromeProfiles` | {'int': 42} |
| `chromeRendererMaxPssKb` | {'int': 42} |
| `chromeRendererPssKb` | {'int': 42} |
| `chromeRenderers` | {'int': 42} |
| `chromeTabs` | {'int': 42} |
| `chromeTabsProbedProfiles` | {'int': 42} |
| `chromeUtilityPssKb` | {'int': 42} |
| `desktopPssKb` | {'int': 42} |
| `hostPssKb` | {'int': 42} |
| `kind` | {'str': 42} |
| `memAvailableKb` | {'int': 42} |
| `memTotalKb` | {'int': 42} |
| `otherPssKb` | {'int': 42} |
| `processes` | {'int': 42} |
| `pssFallbackProcesses` | {'int': 42} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
