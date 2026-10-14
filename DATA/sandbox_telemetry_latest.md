# sandbox_telemetry_parse — 2026-10-14 19:13:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=442426 lines=983
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 978 |
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
| `chromeBrowserPssKb` | {'int': 978} |
| `chromeGpuPssKb` | {'int': 978} |
| `chromeOtherPssKb` | {'int': 978} |
| `chromeProcesses` | {'int': 978} |
| `chromeProfiles` | {'int': 978} |
| `chromeRendererMaxPssKb` | {'int': 978} |
| `chromeRendererPssKb` | {'int': 978} |
| `chromeRenderers` | {'int': 978} |
| `chromeTabs` | {'int': 978} |
| `chromeTabsProbedProfiles` | {'int': 978} |
| `chromeUtilityPssKb` | {'int': 978} |
| `desktopPssKb` | {'int': 978} |
| `hostPssKb` | {'int': 978} |
| `kind` | {'str': 978} |
| `memAvailableKb` | {'int': 978} |
| `memTotalKb` | {'int': 978} |
| `otherPssKb` | {'int': 978} |
| `processes` | {'int': 978} |
| `pssFallbackProcesses` | {'int': 978} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
