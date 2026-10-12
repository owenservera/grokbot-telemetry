# sandbox_telemetry_parse — 2026-10-13 01:21:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=752368 lines=1723
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1627 |
| `chrome_profile_sample` | 88 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1627} |
| `chromeGpuPssKb` | {'int': 1627} |
| `chromeOtherPssKb` | {'int': 1627} |
| `chromeProcesses` | {'int': 1627} |
| `chromeProfiles` | {'int': 1627} |
| `chromeRendererMaxPssKb` | {'int': 1627} |
| `chromeRendererPssKb` | {'int': 1627} |
| `chromeRenderers` | {'int': 1627} |
| `chromeTabs` | {'int': 1627} |
| `chromeTabsProbedProfiles` | {'int': 1627} |
| `chromeUtilityPssKb` | {'int': 1627} |
| `desktopPssKb` | {'int': 1627} |
| `hostPssKb` | {'int': 1627} |
| `kind` | {'str': 1627} |
| `memAvailableKb` | {'int': 1627} |
| `memTotalKb` | {'int': 1627} |
| `otherPssKb` | {'int': 1627} |
| `processes` | {'int': 1627} |
| `pssFallbackProcesses` | {'int': 1627} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 87} |
| `display` | {'int': 88} |
| `kind` | {'str': 88} |
| `processes` | {'int': 88} |
| `pssKb` | {'int': 88} |
| `rendererMaxPssKb` | {'int': 88} |
| `renderers` | {'int': 88} |
| `tabs` | {'int': 88} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
