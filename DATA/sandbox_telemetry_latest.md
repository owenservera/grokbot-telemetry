# sandbox_telemetry_parse — 2026-10-14 08:34:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=190210 lines=425
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 420 |
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
| `chromeBrowserPssKb` | {'int': 420} |
| `chromeGpuPssKb` | {'int': 420} |
| `chromeOtherPssKb` | {'int': 420} |
| `chromeProcesses` | {'int': 420} |
| `chromeProfiles` | {'int': 420} |
| `chromeRendererMaxPssKb` | {'int': 420} |
| `chromeRendererPssKb` | {'int': 420} |
| `chromeRenderers` | {'int': 420} |
| `chromeTabs` | {'int': 420} |
| `chromeTabsProbedProfiles` | {'int': 420} |
| `chromeUtilityPssKb` | {'int': 420} |
| `desktopPssKb` | {'int': 420} |
| `hostPssKb` | {'int': 420} |
| `kind` | {'str': 420} |
| `memAvailableKb` | {'int': 420} |
| `memTotalKb` | {'int': 420} |
| `otherPssKb` | {'int': 420} |
| `processes` | {'int': 420} |
| `pssFallbackProcesses` | {'int': 420} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
