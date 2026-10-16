# sandbox_telemetry_parse — 2026-10-16 06:54:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=206618 lines=772
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 502 |
| `memory_sample` | 261 |
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
| `chromeBrowserPssKb` | {'int': 261} |
| `chromeGpuPssKb` | {'int': 261} |
| `chromeOtherPssKb` | {'int': 261} |
| `chromeProcesses` | {'int': 261} |
| `chromeProfiles` | {'int': 261} |
| `chromeRendererMaxPssKb` | {'int': 261} |
| `chromeRendererPssKb` | {'int': 261} |
| `chromeRenderers` | {'int': 261} |
| `chromeTabs` | {'int': 261} |
| `chromeTabsProbedProfiles` | {'int': 261} |
| `chromeUtilityPssKb` | {'int': 261} |
| `desktopPssKb` | {'int': 261} |
| `hostPssKb` | {'int': 261} |
| `kind` | {'str': 261} |
| `memAvailableKb` | {'int': 261} |
| `memTotalKb` | {'int': 261} |
| `otherPssKb` | {'int': 261} |
| `processes` | {'int': 261} |
| `pssFallbackProcesses` | {'int': 261} |

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
| `cpuMillicores` | {'int': 499} |
| `display` | {'int': 502} |
| `kind` | {'str': 502} |
| `processes` | {'int': 502} |
| `pssKb` | {'int': 502} |
| `rendererMaxPssKb` | {'int': 502} |
| `renderers` | {'int': 502} |
| `tabs` | {'int': 501} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
