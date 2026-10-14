# sandbox_telemetry_parse — 2026-10-14 15:56:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=368298 lines=819
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 814 |
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
| `chromeBrowserPssKb` | {'int': 814} |
| `chromeGpuPssKb` | {'int': 814} |
| `chromeOtherPssKb` | {'int': 814} |
| `chromeProcesses` | {'int': 814} |
| `chromeProfiles` | {'int': 814} |
| `chromeRendererMaxPssKb` | {'int': 814} |
| `chromeRendererPssKb` | {'int': 814} |
| `chromeRenderers` | {'int': 814} |
| `chromeTabs` | {'int': 814} |
| `chromeTabsProbedProfiles` | {'int': 814} |
| `chromeUtilityPssKb` | {'int': 814} |
| `desktopPssKb` | {'int': 814} |
| `hostPssKb` | {'int': 814} |
| `kind` | {'str': 814} |
| `memAvailableKb` | {'int': 814} |
| `memTotalKb` | {'int': 814} |
| `otherPssKb` | {'int': 814} |
| `processes` | {'int': 814} |
| `pssFallbackProcesses` | {'int': 814} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
