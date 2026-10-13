# sandbox_telemetry_parse — 2026-10-13 13:13:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1101334 lines=2819
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2175 |
| `chrome_profile_sample` | 636 |
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
| `chromeBrowserPssKb` | {'int': 2175} |
| `chromeGpuPssKb` | {'int': 2175} |
| `chromeOtherPssKb` | {'int': 2175} |
| `chromeProcesses` | {'int': 2175} |
| `chromeProfiles` | {'int': 2175} |
| `chromeRendererMaxPssKb` | {'int': 2175} |
| `chromeRendererPssKb` | {'int': 2175} |
| `chromeRenderers` | {'int': 2175} |
| `chromeTabs` | {'int': 2175} |
| `chromeTabsProbedProfiles` | {'int': 2175} |
| `chromeUtilityPssKb` | {'int': 2175} |
| `desktopPssKb` | {'int': 2175} |
| `hostPssKb` | {'int': 2175} |
| `kind` | {'str': 2175} |
| `memAvailableKb` | {'int': 2175} |
| `memTotalKb` | {'int': 2175} |
| `otherPssKb` | {'int': 2175} |
| `processes` | {'int': 2175} |
| `pssFallbackProcesses` | {'int': 2175} |

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
| `cpuMillicores` | {'int': 635} |
| `display` | {'int': 636} |
| `kind` | {'str': 636} |
| `processes` | {'int': 636} |
| `pssKb` | {'int': 636} |
| `rendererMaxPssKb` | {'int': 636} |
| `renderers` | {'int': 636} |
| `tabs` | {'int': 636} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
