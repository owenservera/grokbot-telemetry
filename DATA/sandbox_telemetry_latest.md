# sandbox_telemetry_parse — 2026-10-16 00:54:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1139410 lines=2525
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2520 |
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
| `chromeBrowserPssKb` | {'int': 2520} |
| `chromeGpuPssKb` | {'int': 2520} |
| `chromeOtherPssKb` | {'int': 2520} |
| `chromeProcesses` | {'int': 2520} |
| `chromeProfiles` | {'int': 2520} |
| `chromeRendererMaxPssKb` | {'int': 2520} |
| `chromeRendererPssKb` | {'int': 2520} |
| `chromeRenderers` | {'int': 2520} |
| `chromeTabs` | {'int': 2520} |
| `chromeTabsProbedProfiles` | {'int': 2520} |
| `chromeUtilityPssKb` | {'int': 2520} |
| `desktopPssKb` | {'int': 2520} |
| `hostPssKb` | {'int': 2520} |
| `kind` | {'str': 2520} |
| `memAvailableKb` | {'int': 2520} |
| `memTotalKb` | {'int': 2520} |
| `otherPssKb` | {'int': 2520} |
| `processes` | {'int': 2520} |
| `pssFallbackProcesses` | {'int': 2520} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
