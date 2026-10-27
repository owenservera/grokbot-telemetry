# sandbox_telemetry_parse — 2026-10-27 08:08:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=408208 lines=906
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 901 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 901} |
| `chromeGpuPssKb` | {'int': 901} |
| `chromeOtherPssKb` | {'int': 901} |
| `chromeProcesses` | {'int': 901} |
| `chromeProfiles` | {'int': 901} |
| `chromeRendererMaxPssKb` | {'int': 901} |
| `chromeRendererPssKb` | {'int': 901} |
| `chromeRenderers` | {'int': 901} |
| `chromeTabs` | {'int': 901} |
| `chromeTabsProbedProfiles` | {'int': 901} |
| `chromeUtilityPssKb` | {'int': 901} |
| `desktopPssKb` | {'int': 901} |
| `hostPssKb` | {'int': 901} |
| `kind` | {'str': 901} |
| `memAvailableKb` | {'int': 901} |
| `memTotalKb` | {'int': 901} |
| `otherPssKb` | {'int': 901} |
| `processes` | {'int': 901} |
| `pssFallbackProcesses` | {'int': 901} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
