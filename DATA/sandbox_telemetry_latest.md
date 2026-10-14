# sandbox_telemetry_parse — 2026-10-14 03:44:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=78566 lines=178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 173 |
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
| `chromeBrowserPssKb` | {'int': 173} |
| `chromeGpuPssKb` | {'int': 173} |
| `chromeOtherPssKb` | {'int': 173} |
| `chromeProcesses` | {'int': 173} |
| `chromeProfiles` | {'int': 173} |
| `chromeRendererMaxPssKb` | {'int': 173} |
| `chromeRendererPssKb` | {'int': 173} |
| `chromeRenderers` | {'int': 173} |
| `chromeTabs` | {'int': 173} |
| `chromeTabsProbedProfiles` | {'int': 173} |
| `chromeUtilityPssKb` | {'int': 173} |
| `desktopPssKb` | {'int': 173} |
| `hostPssKb` | {'int': 173} |
| `kind` | {'str': 173} |
| `memAvailableKb` | {'int': 173} |
| `memTotalKb` | {'int': 173} |
| `otherPssKb` | {'int': 173} |
| `processes` | {'int': 173} |
| `pssFallbackProcesses` | {'int': 173} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
