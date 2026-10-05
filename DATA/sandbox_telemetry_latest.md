# sandbox_telemetry_parse — 2026-10-05 18:37:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=185224 lines=778
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 562 |
| `memory_sample` | 203 |
| `chrome_launch` | 5 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 203} |
| `chromeGpuPssKb` | {'int': 203} |
| `chromeOtherPssKb` | {'int': 203} |
| `chromeProcesses` | {'int': 203} |
| `chromeProfiles` | {'int': 203} |
| `chromeRendererMaxPssKb` | {'int': 203} |
| `chromeRendererPssKb` | {'int': 203} |
| `chromeRenderers` | {'int': 203} |
| `chromeTabs` | {'int': 203} |
| `chromeTabsProbedProfiles` | {'int': 203} |
| `chromeUtilityPssKb` | {'int': 203} |
| `desktopPssKb` | {'int': 203} |
| `hostPssKb` | {'int': 203} |
| `kind` | {'str': 203} |
| `memAvailableKb` | {'int': 203} |
| `memTotalKb` | {'int': 203} |
| `otherPssKb` | {'int': 203} |
| `processes` | {'int': 203} |
| `pssFallbackProcesses` | {'int': 203} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `display` | {'int': 5} |
| `durationMs` | {'int': 5} |
| `kind` | {'str': 5} |
| `mode` | {'str': 5} |
| `outcome` | {'str': 5} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 555} |
| `display` | {'int': 562} |
| `kind` | {'str': 562} |
| `processes` | {'int': 562} |
| `pssKb` | {'int': 562} |
| `rendererMaxPssKb` | {'int': 562} |
| `renderers` | {'int': 562} |
| `tabs` | {'int': 557} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
