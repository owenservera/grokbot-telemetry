# sandbox_telemetry_parse — 2026-10-14 18:01:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=410334 lines=912
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 907 |
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
| `chromeBrowserPssKb` | {'int': 907} |
| `chromeGpuPssKb` | {'int': 907} |
| `chromeOtherPssKb` | {'int': 907} |
| `chromeProcesses` | {'int': 907} |
| `chromeProfiles` | {'int': 907} |
| `chromeRendererMaxPssKb` | {'int': 907} |
| `chromeRendererPssKb` | {'int': 907} |
| `chromeRenderers` | {'int': 907} |
| `chromeTabs` | {'int': 907} |
| `chromeTabsProbedProfiles` | {'int': 907} |
| `chromeUtilityPssKb` | {'int': 907} |
| `desktopPssKb` | {'int': 907} |
| `hostPssKb` | {'int': 907} |
| `kind` | {'str': 907} |
| `memAvailableKb` | {'int': 907} |
| `memTotalKb` | {'int': 907} |
| `otherPssKb` | {'int': 907} |
| `processes` | {'int': 907} |
| `pssFallbackProcesses` | {'int': 907} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
