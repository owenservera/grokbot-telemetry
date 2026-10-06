# sandbox_telemetry_parse — 2026-10-06 07:00:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=220442 lines=488
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 483 |
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
| `chromeBrowserPssKb` | {'int': 483} |
| `chromeGpuPssKb` | {'int': 483} |
| `chromeOtherPssKb` | {'int': 483} |
| `chromeProcesses` | {'int': 483} |
| `chromeProfiles` | {'int': 483} |
| `chromeRendererMaxPssKb` | {'int': 483} |
| `chromeRendererPssKb` | {'int': 483} |
| `chromeRenderers` | {'int': 483} |
| `chromeTabs` | {'int': 483} |
| `chromeTabsProbedProfiles` | {'int': 483} |
| `chromeUtilityPssKb` | {'int': 483} |
| `desktopPssKb` | {'int': 483} |
| `hostPssKb` | {'int': 483} |
| `kind` | {'str': 483} |
| `memAvailableKb` | {'int': 483} |
| `memTotalKb` | {'int': 483} |
| `otherPssKb` | {'int': 483} |
| `processes` | {'int': 483} |
| `pssFallbackProcesses` | {'int': 483} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
