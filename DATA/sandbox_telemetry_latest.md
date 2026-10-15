# sandbox_telemetry_parse — 2026-10-16 00:46:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1137150 lines=2520
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2515 |
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
| `chromeBrowserPssKb` | {'int': 2515} |
| `chromeGpuPssKb` | {'int': 2515} |
| `chromeOtherPssKb` | {'int': 2515} |
| `chromeProcesses` | {'int': 2515} |
| `chromeProfiles` | {'int': 2515} |
| `chromeRendererMaxPssKb` | {'int': 2515} |
| `chromeRendererPssKb` | {'int': 2515} |
| `chromeRenderers` | {'int': 2515} |
| `chromeTabs` | {'int': 2515} |
| `chromeTabsProbedProfiles` | {'int': 2515} |
| `chromeUtilityPssKb` | {'int': 2515} |
| `desktopPssKb` | {'int': 2515} |
| `hostPssKb` | {'int': 2515} |
| `kind` | {'str': 2515} |
| `memAvailableKb` | {'int': 2515} |
| `memTotalKb` | {'int': 2515} |
| `otherPssKb` | {'int': 2515} |
| `processes` | {'int': 2515} |
| `pssFallbackProcesses` | {'int': 2515} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
