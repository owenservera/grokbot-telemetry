# sandbox_telemetry_parse — 2026-10-16 00:08:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1121330 lines=2485
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2480 |
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
| `chromeBrowserPssKb` | {'int': 2480} |
| `chromeGpuPssKb` | {'int': 2480} |
| `chromeOtherPssKb` | {'int': 2480} |
| `chromeProcesses` | {'int': 2480} |
| `chromeProfiles` | {'int': 2480} |
| `chromeRendererMaxPssKb` | {'int': 2480} |
| `chromeRendererPssKb` | {'int': 2480} |
| `chromeRenderers` | {'int': 2480} |
| `chromeTabs` | {'int': 2480} |
| `chromeTabsProbedProfiles` | {'int': 2480} |
| `chromeUtilityPssKb` | {'int': 2480} |
| `desktopPssKb` | {'int': 2480} |
| `hostPssKb` | {'int': 2480} |
| `kind` | {'str': 2480} |
| `memAvailableKb` | {'int': 2480} |
| `memTotalKb` | {'int': 2480} |
| `otherPssKb` | {'int': 2480} |
| `processes` | {'int': 2480} |
| `pssFallbackProcesses` | {'int': 2480} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
