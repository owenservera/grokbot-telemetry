# sandbox_telemetry_parse — 2026-10-14 08:51:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=196990 lines=440
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 435 |
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
| `chromeBrowserPssKb` | {'int': 435} |
| `chromeGpuPssKb` | {'int': 435} |
| `chromeOtherPssKb` | {'int': 435} |
| `chromeProcesses` | {'int': 435} |
| `chromeProfiles` | {'int': 435} |
| `chromeRendererMaxPssKb` | {'int': 435} |
| `chromeRendererPssKb` | {'int': 435} |
| `chromeRenderers` | {'int': 435} |
| `chromeTabs` | {'int': 435} |
| `chromeTabsProbedProfiles` | {'int': 435} |
| `chromeUtilityPssKb` | {'int': 435} |
| `desktopPssKb` | {'int': 435} |
| `hostPssKb` | {'int': 435} |
| `kind` | {'str': 435} |
| `memAvailableKb` | {'int': 435} |
| `memTotalKb` | {'int': 435} |
| `otherPssKb` | {'int': 435} |
| `processes` | {'int': 435} |
| `pssFallbackProcesses` | {'int': 435} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
