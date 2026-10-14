# sandbox_telemetry_parse — 2026-10-14 21:26:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=496666 lines=1103
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1098 |
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
| `chromeBrowserPssKb` | {'int': 1098} |
| `chromeGpuPssKb` | {'int': 1098} |
| `chromeOtherPssKb` | {'int': 1098} |
| `chromeProcesses` | {'int': 1098} |
| `chromeProfiles` | {'int': 1098} |
| `chromeRendererMaxPssKb` | {'int': 1098} |
| `chromeRendererPssKb` | {'int': 1098} |
| `chromeRenderers` | {'int': 1098} |
| `chromeTabs` | {'int': 1098} |
| `chromeTabsProbedProfiles` | {'int': 1098} |
| `chromeUtilityPssKb` | {'int': 1098} |
| `desktopPssKb` | {'int': 1098} |
| `hostPssKb` | {'int': 1098} |
| `kind` | {'str': 1098} |
| `memAvailableKb` | {'int': 1098} |
| `memTotalKb` | {'int': 1098} |
| `otherPssKb` | {'int': 1098} |
| `processes` | {'int': 1098} |
| `pssFallbackProcesses` | {'int': 1098} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
