# sandbox_telemetry_parse — 2026-10-16 10:48:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=374381 lines=1399
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 920 |
| `memory_sample` | 470 |
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
| `chromeBrowserPssKb` | {'int': 470} |
| `chromeGpuPssKb` | {'int': 470} |
| `chromeOtherPssKb` | {'int': 470} |
| `chromeProcesses` | {'int': 470} |
| `chromeProfiles` | {'int': 470} |
| `chromeRendererMaxPssKb` | {'int': 470} |
| `chromeRendererPssKb` | {'int': 470} |
| `chromeRenderers` | {'int': 470} |
| `chromeTabs` | {'int': 470} |
| `chromeTabsProbedProfiles` | {'int': 470} |
| `chromeUtilityPssKb` | {'int': 470} |
| `desktopPssKb` | {'int': 470} |
| `hostPssKb` | {'int': 470} |
| `kind` | {'str': 470} |
| `memAvailableKb` | {'int': 470} |
| `memTotalKb` | {'int': 470} |
| `otherPssKb` | {'int': 470} |
| `processes` | {'int': 470} |
| `pssFallbackProcesses` | {'int': 470} |

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
| `cpuMillicores` | {'int': 917} |
| `display` | {'int': 920} |
| `kind` | {'str': 920} |
| `processes` | {'int': 920} |
| `pssKb` | {'int': 920} |
| `rendererMaxPssKb` | {'int': 920} |
| `renderers` | {'int': 920} |
| `tabs` | {'int': 919} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
