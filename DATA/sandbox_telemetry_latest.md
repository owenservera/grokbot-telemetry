# sandbox_telemetry_parse — 2026-10-16 17:07:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=654429 lines=2446
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1618 |
| `memory_sample` | 819 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 819} |
| `chromeGpuPssKb` | {'int': 819} |
| `chromeOtherPssKb` | {'int': 819} |
| `chromeProcesses` | {'int': 819} |
| `chromeProfiles` | {'int': 819} |
| `chromeRendererMaxPssKb` | {'int': 819} |
| `chromeRendererPssKb` | {'int': 819} |
| `chromeRenderers` | {'int': 819} |
| `chromeTabs` | {'int': 819} |
| `chromeTabsProbedProfiles` | {'int': 819} |
| `chromeUtilityPssKb` | {'int': 819} |
| `desktopPssKb` | {'int': 819} |
| `hostPssKb` | {'int': 819} |
| `kind` | {'str': 819} |
| `memAvailableKb` | {'int': 819} |
| `memTotalKb` | {'int': 819} |
| `otherPssKb` | {'int': 819} |
| `processes` | {'int': 819} |
| `pssFallbackProcesses` | {'int': 819} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 1615} |
| `display` | {'int': 1618} |
| `kind` | {'str': 1618} |
| `processes` | {'int': 1618} |
| `pssKb` | {'int': 1618} |
| `rendererMaxPssKb` | {'int': 1618} |
| `renderers` | {'int': 1618} |
| `tabs` | {'int': 1617} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
